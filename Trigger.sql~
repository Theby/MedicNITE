DELIMITER //
CREATE TRIGGER asignaciones_asignacama BEFORE INSERT ON asignaciones FOR EACH ROW
BEGIN
   DECLARE disponible INT;
   UPDATE camas 
   SET estadoCama = 'Ocupado' 
   WHERE idCama = NEW.idCama;
   IF NEW.idHabitacion IS NOT NULL THEN
      SET disponible = (SELECT MIN(capacidadHabitacion) FROM habitacions WHERE idHabitacion = NEW.idHabitacion);
      IF disponible > 1 THEN
         UPDATE habitacions 
         SET capacidadHabitacion = capacidadHabitacion - 1  
         WHERE idHabitacion = NEW.idHabitacion;         
      ELSE IF disponible = 1 THEN
         UPDATE habitacions 
         SET capacidadHabitacion = capacidadHabitacion - 1
         WHERE idHabitacion = NEW.idHabitacion;
         UPDATE habitacions 
         SET estadoHabitacion = 'Ocupado'
         WHERE idHabitacion = NEW.idHabitacion;
      END IF;
   END IF;
END//
DELIMITER ;
